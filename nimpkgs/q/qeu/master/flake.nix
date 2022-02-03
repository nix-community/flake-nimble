{
  description = ''Functionality for compare two values'';
  inputs.src-qeu-master.flake = false;
  inputs.src-qeu-master.type = "github";
  inputs.src-qeu-master.owner = "hyu1996";
  inputs.src-qeu-master.repo = "qeu";
  inputs.src-qeu-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-qeu-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qeu-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-qeu-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}