{
  description = ''FastQ and Fasta readers for NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fastx_reader-master.flake = false;
  inputs.src-fastx_reader-master.type = "github";
  inputs.src-fastx_reader-master.owner = "ahcm";
  inputs.src-fastx_reader-master.repo = "fastx_reader";
  inputs.src-fastx_reader-master.ref = "refs/heads/master";
  inputs.src-fastx_reader-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fastx_reader-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fastx_reader-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fastx_reader-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}