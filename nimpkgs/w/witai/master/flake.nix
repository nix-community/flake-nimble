{
  description = ''wit.ai client'';
  inputs.src-witai-master.flake = false;
  inputs.src-witai-master.type = "github";
  inputs.src-witai-master.owner = "xmonader";
  inputs.src-witai-master.repo = "witai-nim";
  inputs.src-witai-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-witai-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-witai-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-witai-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}