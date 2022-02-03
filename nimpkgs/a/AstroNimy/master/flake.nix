{
  description = ''Astronomical library for Nim'';
  inputs.src-AstroNimy-master.flake = false;
  inputs.src-AstroNimy-master.type = "github";
  inputs.src-AstroNimy-master.owner = "super-massive-black-holes";
  inputs.src-AstroNimy-master.repo = "AstroNimy";
  inputs.src-AstroNimy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-AstroNimy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-AstroNimy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-AstroNimy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}