{
  description = ''C2nim helper to simplify and automate wrapping C libraries'';
  inputs.src-nimgen-master.flake = false;
  inputs.src-nimgen-master.type = "github";
  inputs.src-nimgen-master.owner = "genotrance";
  inputs.src-nimgen-master.repo = "nimgen";
  inputs.src-nimgen-master.ref = "refs/heads/master";
  
  
  inputs."c2nim".url = "path:../../../c/c2nim";
  inputs."c2nim".type = "github";
  inputs."c2nim".owner = "riinr";
  inputs."c2nim".repo = "flake-nimble";
  inputs."c2nim".ref = "flake-pinning";
  inputs."c2nim".dir = "nimpkgs/c/c2nim";

  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-nimgen-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgen-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgen-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}