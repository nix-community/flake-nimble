{
  description = ''Zero-cost abstractions for microcontrollers'';
  inputs.src-ratel-master.flake = false;
  inputs.src-ratel-master.type = "github";
  inputs.src-ratel-master.owner = "PMunch";
  inputs.src-ratel-master.repo = "ratel";
  inputs.src-ratel-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ratel-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ratel-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ratel-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}