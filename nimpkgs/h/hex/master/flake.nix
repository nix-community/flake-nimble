{
  description = ''A simple hex package for Nim'';
  inputs.src-hex-master.flake = false;
  inputs.src-hex-master.type = "github";
  inputs.src-hex-master.owner = "esbullington";
  inputs.src-hex-master.repo = "nimrod-hex";
  inputs.src-hex-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-hex-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hex-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hex-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}