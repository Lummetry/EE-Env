FROM pytorch/pytorch

WORKDIR /exe_eng

COPY . /exe_eng

RUN conda install seaborn pandas shapely scikit-learn scikit-image dropbox pymssql h5py unidecode
RUN conda install -c conda-forge "ffmpeg>=5"
RUN pip install --no-cache-dir --upgrade -r requirements.txt


# set a generic env variable 
ENV AIXP_DOCKER Yes