SRCS := programA.c programB.c programC.c

target1:
	@echo "SRCS: " $(SRCS)
	@echo "TARGET1-SRCS: " $(TARGET1-SRCS)
	@echo "TARGET2-SRCS: " $(TARGET2-SRCS)
	@echo "TARGET3-SRCS: " $(TARGET3-SRCS)

target2: TARGET2-SRCS := program2.c
target2:
	@echo "SRCS: " $(SRCS)
	@echo "TARGET1-SRCS: " $(TARGET1-SRCS)
	@echo "TARGET2-SRCS: " $(TARGET2-SRCS)
	@echo "TARGET3-SRCS: " $(TARGET3-SRCS)

target3: override TARGET3-SRCS := program3.c
target3:
	@echo "SRCS: " $(SRCS)
	@echo "TARGET1-SRCS: " $(TARGET1-SRCS)
	@echo "TARGET2-SRCS: " $(TARGET2-SRCS)
	@echo "TARGET3-SRCS: " $(TARGET3-SRCS)