{
  description = ''SVG output from a shell.'';
  inputs.src-svgo-master.flake = false;
  inputs.src-svgo-master.type = "github";
  inputs.src-svgo-master.owner = "jiro4989";
  inputs.src-svgo-master.repo = "svgo";
  inputs.src-svgo-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-svgo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-svgo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-svgo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}