{
  description = ''Flash ISO images to SD cards & USB drives, safely and easily.'';
  inputs.src-ballena_itcher-master.flake = false;
  inputs.src-ballena_itcher-master.type = "github";
  inputs.src-ballena_itcher-master.owner = "juancarlospaco";
  inputs.src-ballena_itcher-master.repo = "ballena-itcher";
  inputs.src-ballena_itcher-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ballena_itcher-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ballena_itcher-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ballena_itcher-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}