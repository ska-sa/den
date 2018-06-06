cwlVersion: v1.0
class: CommandLineTool

baseCommand: tar

hints:
  DockerRequirement:
      dockerPull: ska-sa/den 

arguments: 
  - xvf

inputs:
  mstar:
    type: File
    inputBinding:
      valueFrom: $(self.path)

outputs:
  ms:
    type: Directory
    outputBinding:
      glob: "*.ms"
