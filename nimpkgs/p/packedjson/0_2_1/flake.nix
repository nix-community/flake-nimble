{
  description = ''packedjson is an alternative Nim implementation for JSON. The JSON is essentially kept as a single string in order to save memory over a more traditional tree representation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-packedjson-0_2_1.flake = false;
  inputs.src-packedjson-0_2_1.type = "github";
  inputs.src-packedjson-0_2_1.owner = "Araq";
  inputs.src-packedjson-0_2_1.repo = "packedjson";
  inputs.src-packedjson-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-packedjson-0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-packedjson-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-packedjson-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}