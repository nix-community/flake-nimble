{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';
  inputs.src-jsmn-0_1_3.flake = false;
  inputs.src-jsmn-0_1_3.type = "github";
  inputs.src-jsmn-0_1_3.owner = "OpenSystemsLab";
  inputs.src-jsmn-0_1_3.repo = "jsmn.nim";
  inputs.src-jsmn-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-jsmn-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsmn-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsmn-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}