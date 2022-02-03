{
  description = ''Fast and just works JSON-Binding for Nim'';
  inputs.src-sam-0_1_8.flake = false;
  inputs.src-sam-0_1_8.type = "github";
  inputs.src-sam-0_1_8.owner = "OpenSystemsLab";
  inputs.src-sam-0_1_8.repo = "sam.nim";
  inputs.src-sam-0_1_8.ref = "refs/tags/0.1.8";
  
  
  inputs."jsmn".url = "path:../../../j/jsmn";
  inputs."jsmn".type = "github";
  inputs."jsmn".owner = "riinr";
  inputs."jsmn".repo = "flake-nimble";
  inputs."jsmn".ref = "flake-pinning";
  inputs."jsmn".dir = "nimpkgs/j/jsmn";

  outputs = { self, nixpkgs, src-sam-0_1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sam-0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sam-0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}