#!/bin/bash
for BAC in $(cat bacs.txt); do #leitura do arquivo com todas as bacterias e loop para execução
	for FAGO in $(cat fagos.txt); do #leitura do arquivo com todos os fagos e loop para execução
		echo `grep -w $BAC micobacteria_fagos2.csv | grep -cw $FAGO` #contagem de cada fago por bacteria
	done
done
