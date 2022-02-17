{
  description = ''Mapping nim type to xml node, and parse from it.'';
  inputs.src-xmlio-v0_1_7.flake = false;
  inputs.src-xmlio-v0_1_7.type = "github";
  inputs.src-xmlio-v0_1_7.owner = "codehz";
  inputs.src-xmlio-v0_1_7.repo = "xmlio";
  inputs.src-xmlio-v0_1_7.ref = "refs/tags/v0.1.7";
  
  
  inputs."vtable".type = "github";
  inputs."vtable".owner = "riinr";
  inputs."vtable".repo = "flake-nimble";
  inputs."vtable".ref = "flake-pinning";
  inputs."vtable".dir = "nimpkgs/v/vtable";

  outputs = { self, nixpkgs, src-xmlio-v0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xmlio-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xmlio-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}