{
  description = ''packedjson is an alternative Nim implementation for JSON. The JSON is essentially kept as a single string in order to save memory over a more traditional tree representation.'';
  inputs.src-packedjson-0_1_0.flake = false;
  inputs.src-packedjson-0_1_0.type = "github";
  inputs.src-packedjson-0_1_0.owner = "Araq";
  inputs.src-packedjson-0_1_0.repo = "packedjson";
  inputs.src-packedjson-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-packedjson-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-packedjson-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-packedjson-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}