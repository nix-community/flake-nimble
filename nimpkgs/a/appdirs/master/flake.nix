{
  description = ''A utility library to find the directory you need to app in.'';
  inputs.src-appdirs-master.flake = false;
  inputs.src-appdirs-master.type = "github";
  inputs.src-appdirs-master.owner = "MrJohz";
  inputs.src-appdirs-master.repo = "appdirs";
  inputs.src-appdirs-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-appdirs-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-appdirs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-appdirs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}