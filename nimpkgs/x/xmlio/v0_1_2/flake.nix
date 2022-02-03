{
  description = ''Mapping nim type to xml node, and parse from it.'';
  inputs.src-xmlio-v0_1_2.flake = false;
  inputs.src-xmlio-v0_1_2.type = "github";
  inputs.src-xmlio-v0_1_2.owner = "codehz";
  inputs.src-xmlio-v0_1_2.repo = "xmlio";
  inputs.src-xmlio-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."vtable".url = "path:../../../v/vtable";
  inputs."vtable".type = "github";
  inputs."vtable".owner = "riinr";
  inputs."vtable".repo = "flake-nimble";
  inputs."vtable".ref = "flake-pinning";
  inputs."vtable".dir = "nimpkgs/v/vtable";

  outputs = { self, nixpkgs, src-xmlio-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xmlio-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xmlio-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}