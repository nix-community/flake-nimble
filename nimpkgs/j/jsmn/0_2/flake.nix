{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';
  inputs.src-jsmn-0_2.flake = false;
  inputs.src-jsmn-0_2.type = "github";
  inputs.src-jsmn-0_2.owner = "OpenSystemsLab";
  inputs.src-jsmn-0_2.repo = "jsmn.nim";
  inputs.src-jsmn-0_2.ref = "refs/tags/0.2";
  
  outputs = { self, nixpkgs, src-jsmn-0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsmn-0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsmn-0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}