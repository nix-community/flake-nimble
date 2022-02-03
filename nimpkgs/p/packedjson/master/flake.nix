{
  description = ''packedjson is an alternative Nim implementation for JSON. The JSON is essentially kept as a single string in order to save memory over a more traditional tree representation.'';
  inputs.src-packedjson-master.flake = false;
  inputs.src-packedjson-master.type = "github";
  inputs.src-packedjson-master.owner = "Araq";
  inputs.src-packedjson-master.repo = "packedjson";
  inputs.src-packedjson-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-packedjson-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-packedjson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-packedjson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}