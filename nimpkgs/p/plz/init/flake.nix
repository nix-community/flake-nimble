{
  description = ''PLZ Python PIP alternative'';
  inputs.src-plz-init.flake = false;
  inputs.src-plz-init.type = "github";
  inputs.src-plz-init.owner = "juancarlospaco";
  inputs.src-plz-init.repo = "nim-pypi";
  inputs.src-plz-init.ref = "refs/tags/init";
  
  
  inputs."nimarchive".url = "path:../../../n/nimarchive";
  inputs."nimarchive".type = "github";
  inputs."nimarchive".owner = "riinr";
  inputs."nimarchive".repo = "flake-nimble";
  inputs."nimarchive".ref = "flake-pinning";
  inputs."nimarchive".dir = "nimpkgs/n/nimarchive";

  outputs = { self, nixpkgs, src-plz-init, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plz-init;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-plz-init"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}