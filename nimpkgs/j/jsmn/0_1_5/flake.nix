{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';
  inputs.src-jsmn-0_1_5.flake = false;
  inputs.src-jsmn-0_1_5.type = "github";
  inputs.src-jsmn-0_1_5.owner = "OpenSystemsLab";
  inputs.src-jsmn-0_1_5.repo = "jsmn.nim";
  inputs.src-jsmn-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-jsmn-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsmn-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsmn-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}