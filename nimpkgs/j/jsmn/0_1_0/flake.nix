{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';
  inputs.src-jsmn-0_1_0.flake = false;
  inputs.src-jsmn-0_1_0.type = "github";
  inputs.src-jsmn-0_1_0.owner = "OpenSystemsLab";
  inputs.src-jsmn-0_1_0.repo = "jsmn.nim";
  inputs.src-jsmn-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-jsmn-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsmn-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsmn-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}