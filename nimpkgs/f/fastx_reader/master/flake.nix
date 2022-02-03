{
  description = ''FastQ and Fasta readers for NIM'';
  inputs.src-fastx_reader-master.flake = false;
  inputs.src-fastx_reader-master.type = "github";
  inputs.src-fastx_reader-master.owner = "ahcm";
  inputs.src-fastx_reader-master.repo = "fastx_reader";
  inputs.src-fastx_reader-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fastx_reader-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fastx_reader-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fastx_reader-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}