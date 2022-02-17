{
  description = ''Mapping nim type to xml node, and parse from it.'';
  inputs.src-xmlio-v0_2_5.flake = false;
  inputs.src-xmlio-v0_2_5.type = "github";
  inputs.src-xmlio-v0_2_5.owner = "codehz";
  inputs.src-xmlio-v0_2_5.repo = "xmlio";
  inputs.src-xmlio-v0_2_5.ref = "refs/tags/v0.2.5";
  
  
  inputs."vtable".type = "github";
  inputs."vtable".owner = "riinr";
  inputs."vtable".repo = "flake-nimble";
  inputs."vtable".ref = "flake-pinning";
  inputs."vtable".dir = "nimpkgs/v/vtable";

  outputs = { self, nixpkgs, src-xmlio-v0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xmlio-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xmlio-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}