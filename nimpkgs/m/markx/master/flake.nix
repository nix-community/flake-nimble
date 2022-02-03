{
  description = ''markx selects execution targets with editor and executes commands.'';
  inputs.src-markx-master.flake = false;
  inputs.src-markx-master.type = "github";
  inputs.src-markx-master.owner = "jiro4989";
  inputs.src-markx-master.repo = "markx";
  inputs.src-markx-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-markx-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-markx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}