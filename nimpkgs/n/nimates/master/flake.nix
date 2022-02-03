{
  description = ''Client library for the Postmates API'';
  inputs.src-nimates-master.flake = false;
  inputs.src-nimates-master.type = "github";
  inputs.src-nimates-master.owner = "jamesalbert";
  inputs.src-nimates-master.repo = "nimates";
  inputs.src-nimates-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimates-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimates-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimates-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}