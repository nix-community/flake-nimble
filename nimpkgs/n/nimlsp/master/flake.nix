{
  description = ''Language Server Protocol implementation for Nim'';
  inputs.src-nimlsp-master.flake = false;
  inputs.src-nimlsp-master.type = "github";
  inputs.src-nimlsp-master.owner = "PMunch";
  inputs.src-nimlsp-master.repo = "nimlsp";
  inputs.src-nimlsp-master.ref = "refs/heads/master";
  
  
  inputs."jsonschema".url = "path:../../../j/jsonschema";
  inputs."jsonschema".type = "github";
  inputs."jsonschema".owner = "riinr";
  inputs."jsonschema".repo = "flake-nimble";
  inputs."jsonschema".ref = "flake-pinning";
  inputs."jsonschema".dir = "nimpkgs/j/jsonschema";

  outputs = { self, nixpkgs, src-nimlsp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlsp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimlsp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}