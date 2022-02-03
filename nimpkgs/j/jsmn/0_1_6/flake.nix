{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';
  inputs.src-jsmn-0_1_6.flake = false;
  inputs.src-jsmn-0_1_6.type = "github";
  inputs.src-jsmn-0_1_6.owner = "OpenSystemsLab";
  inputs.src-jsmn-0_1_6.repo = "jsmn.nim";
  inputs.src-jsmn-0_1_6.ref = "refs/tags/0.1.6";
  
  outputs = { self, nixpkgs, src-jsmn-0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsmn-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsmn-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}