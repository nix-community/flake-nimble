{
  description = ''A macro for generating [de]serializers for given objects'';
  inputs.src-nesm-master.flake = false;
  inputs.src-nesm-master.type = "gitlab";
  inputs.src-nesm-master.owner = "xomachine";
  inputs.src-nesm-master.repo = "NESM";
  inputs.src-nesm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nesm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}