package main

import (
	"fmt"
	"os"
	"strings"

	"github.com/go-gota/gota/dataframe"
)

func main() {
	csvStr, err := os.ReadFile("../data/clusters_2.csv")
	if err != nil {
		fmt.Print(err)
	}
	df := dataframe.ReadCSV(strings.NewReader(string(csvStr)))
	fmt.Println((df.Col("# X")).Mean())
}
