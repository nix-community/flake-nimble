{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
  inputs.src-nimterop-master.flake = false;
  inputs.src-nimterop-master.type = "github";
  inputs.src-nimterop-master.owner = "genotrance";
  inputs.src-nimterop-master.repo = "nimterop";
  inputs.src-nimterop-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimterop-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimterop-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}