package main

import (
	"context"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"time"
)

func usage() {
	fmt.Fprintf(os.Stderr, "Uso: %s <arquivo-de-entrada> <formato-de-saida> [nome-saida]\n", filepath.Base(os.Args[0]))
	fmt.Fprintf(os.Stderr, "Ex: %s input.mp4 mp4 output.mp4\n", filepath.Base(os.Args[0]))
	os.Exit(1)
}

func fileExists(path string) bool {
	info, err := os.Stat(path)
	return err == nil && !info.IsDir()
}

func ensureExt(name, ext string) string {
	if filepath.Ext(name) == "" {
		return name + "." + ext
	}
	return name
}

func main() {
	if len(os.Args) < 3 {
		usage()
	}

	input := os.Args[1]
	outFmt := os.Args[2]

	if !fileExists(input) {
		fmt.Fprintf(os.Stderr, "Erro: arquivo de entrada não encontrado: %s\n", input)
		os.Exit(1)
	}

	var output string
	if len(os.Args) >= 4 {
		output = ensureExt(filepath.Base(os.Args[3]), outFmt)
	} else if envOut := os.Getenv("OUTPUT_NAME"); envOut != "" {
		output = ensureExt(filepath.Base(envOut), outFmt)
	} else {
		base := filepath.Base(input)
		name := strings.TrimSuffix(base, filepath.Ext(base))
		output = name + "." + outFmt
	}

	fmt.Printf("Convertendo %s -> %s\n", input, output)

	ctx, cancel := context.WithTimeout(context.Background(), 30*time.Minute)
	defer cancel()

	cmd := exec.CommandContext(ctx, "ffmpeg",
		"-y", "-hide_banner",
		"-i", input,
		"-preset", "fast",
		"-c:v", "libx264",
		"-c:a", "aac",
		output,
	)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	if err := cmd.Run(); err != nil {
		fmt.Fprintf(os.Stderr, "ffmpeg retornou erro: %v\n", err)
		os.Exit(1)
	}

	fmt.Println("Conversão concluída:", output)
}
