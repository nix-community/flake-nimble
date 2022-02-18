{
  description = ''Fast and just works JSON-Binding for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sam-0_1_4.flake = false;
  inputs.src-sam-0_1_4.type = "github";
  inputs.src-sam-0_1_4.owner = "OpenSystemsLab";
  inputs.src-sam-0_1_4.repo = "sam.nim";
  inputs.src-sam-0_1_4.ref = "refs/tags/0.1.4";
  
  
  inputs."jsmn".type = "github";
  inputs."jsmn".owner = "riinr";
  inputs."jsmn".repo = "flake-nimble";
  inputs."jsmn".ref = "flake-pinning";
  inputs."jsmn".dir = "nimpkgs/j/jsmn";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sam-0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sam-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sam-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}