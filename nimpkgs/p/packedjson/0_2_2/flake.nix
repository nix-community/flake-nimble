{
  description = ''packedjson is an alternative Nim implementation for JSON. The JSON is essentially kept as a single string in order to save memory over a more traditional tree representation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-packedjson-0_2_2.flake = false;
  inputs.src-packedjson-0_2_2.type = "github";
  inputs.src-packedjson-0_2_2.owner = "Araq";
  inputs.src-packedjson-0_2_2.repo = "packedjson";
  inputs.src-packedjson-0_2_2.ref = "refs/tags/0.2.2";
  inputs.src-packedjson-0_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-packedjson-0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-packedjson-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-packedjson-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}