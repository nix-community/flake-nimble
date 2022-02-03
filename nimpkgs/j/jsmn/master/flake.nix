{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';
  inputs.src-jsmn-master.flake = false;
  inputs.src-jsmn-master.type = "github";
  inputs.src-jsmn-master.owner = "OpenSystemsLab";
  inputs.src-jsmn-master.repo = "jsmn.nim";
  inputs.src-jsmn-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jsmn-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsmn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jsmn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}