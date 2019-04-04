500plus: main.o cellChecker.o simulation.o fileReader.o gridContainer.o StatisticsContainer.o fileMaker.o
	gcc -o 500+ main.o cellChecker.o simulation.o fileReader.o gridContainer.o StatisticsContainer.o fileMaker.o
main.o: main.c simulation.h fileReader.h
	gcc -c main.c
cellChecker.o: cellChecker.c cellChecker.h
	gcc -c cellChecker.c
simulation.o: simulation.c simulation.h StatisticsContainer.h
	gcc -c simulation.c
fileReader.o: fileReader.c fileReader.h gridContainer.h
	gcc -c fileReader.c
gridContainer.o: gridContainer.c gridContainer.h cellChecker.h
	gcc -c gridContainer.c
fileMaker.o: fileMaker.c fileMaker.h StatisticsContainer.h simulation.h
	gcc -c fileMaker.c
StatisticsContainer.o: StatisticsContainer.c StatisticsContainer.h
	gcc -c StatisticsContainer.c

