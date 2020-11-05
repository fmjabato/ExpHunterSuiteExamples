# /usr/bin/env bash

# HERE YOU MUST LOAD SRA Toolkit to download the data
module load sra_toolkit

# CONFIGURE YOUR DOWNLOAD FOLDER
DOWNLOAD_FOLDER=''

# CONFIGURE YOUR DOWNLOAD FILE : File with SRA identifiers (one per line) to download
SRA_FILE='sra_runs.txt'

# CONFIGURE CREDENTIAL JSON 
CREDENTIAL_FILE=''

# CONFIG:::
mkdir -p $DOWNLOAD_FOLDER
mkdir -p  ~/.ncbi
echo -e '/LIBS/GUID = "180ce9b5-d384-4446-b76f-3a94a9618a7e"
/config/default = "false"
/gcp/credential_file = "'$CREDENTIAL_FILE'"
/libs/cloud/report_instance_identity = "true"
/repository/user/ad/public/apps/file/volumes/flatAd = "."
/repository/user/ad/public/apps/refseq/volumes/refseqAd = "."
/repository/user/ad/public/apps/sra/volumes/sraAd = "."
/repository/user/ad/public/apps/sraPileup/volumes/ad = "."
/repository/user/ad/public/apps/sraRealign/volumes/ad = "."
/repository/user/ad/public/root = "."
/repository/user/default-path = "'$HOME'/ncbi"
/repository/user/main/public/root = "'$DOWNLOAD_FOLDER'"' > ~/.ncbi/user-settings.mkfg
for i in `cat $SRA_FILE`
do
    srapath "${SRA_FILE}"
    prefetch -X 200000000 $2 "${SRA_FILE}"
    sleep 10
done

