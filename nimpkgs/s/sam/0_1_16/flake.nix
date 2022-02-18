{
  description = ''Fast and just works JSON-Binding for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sam-0_1_16.flake = false;
  inputs.src-sam-0_1_16.type = "github";
  inputs.src-sam-0_1_16.owner = "OpenSystemsLab";
  inputs.src-sam-0_1_16.repo = "sam.nim";
  inputs.src-sam-0_1_16.ref = "refs/tags/0.1.16";
  
  
  inputs."jsmn".type = "github";
  inputs."jsmn".owner = "riinr";
  inputs."jsmn".repo = "flake-nimble";
  inputs."jsmn".ref = "flake-pinning";
  inputs."jsmn".dir = "nimpkgs/j/jsmn";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sam-0_1_16, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sam-0_1_16;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sam-0_1_16"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}