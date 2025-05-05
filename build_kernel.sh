#!/bin/bash

# --- Color Definitions ---
# Define some colors for better output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# --- Script Start ---
echo -e "${BLUE}======================================${NC}"
echo -e "${BLUE}  Kernel Build Script Starting        ${NC}"
echo -e "${BLUE}======================================${NC}"
echo ""

# --- Environment Setup ---
echo -e "${YELLOW}Setting up build environment variables...${NC}"
export ARCH=arm64
export PLATFORM_VERSION=12
export ANDROID_MAJOR_VERSION=s
echo -e "${GREEN}Environment variables set:${NC}"
echo -e "  ${GREEN}ARCH=${ARCH}${NC}"
echo -e "  ${GREEN}PLATFORM_VERSION=${PLATFORM_VERSION}${NC}"
echo -e "  ${GREEN}ANDROID_MAJOR_VERSION=${ANDROID_MAJOR_VERSION}${NC}"
echo ""

# Exit immediately if a command exits with a non-zero status.
set -e

# --- Kernel Configuration ---
echo -e "${YELLOW}Starting kernel configuration...${NC}"
echo -e "${BLUE}Running: make ARCH=${ARCH} blue_nethunter_minhmc2007_defconfig${NC}"
make ARCH=${ARCH} blue_nethunter_minhmc2007_defconfig

# Check if the previous command was successful
if [ $? -eq 0 ]; then
  echo -e "${GREEN}Kernel configuration successful!${NC}"
else
  echo -e "${RED}Kernel configuration failed! Exiting.${NC}"
  exit 1
fi
echo ""

# --- Kernel Build ---
echo -e "${YELLOW}Starting kernel build...${NC}"
echo -e "${BLUE}Running: make ARCH=${ARCH} -j16${NC}"
make ARCH=${ARCH} -j16

# Check if the previous command was successful
if [ $? -eq 0 ]; then
  echo -e "${GREEN}Kernel build completed successfully!${NC}"
else
  echo -e "${RED}Kernel build failed!${NC}"
  exit 1
fi
echo ""

# --- Script End ---
echo -e "${BLUE}======================================${NC}"
echo -e "${GREEN}  Kernel Build Script Finished!       ${NC}"
echo -e "${BLUE}======================================${NC}"
echo ""
