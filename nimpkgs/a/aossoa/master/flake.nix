{
  description = ''Use a Structure of Arrays like an Array of Structures'';
  inputs.src-aossoa-master.flake = false;
  inputs.src-aossoa-master.type = "github";
  inputs.src-aossoa-master.owner = "guibar64";
  inputs.src-aossoa-master.repo = "aossoa";
  inputs.src-aossoa-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-aossoa-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-aossoa-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-aossoa-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}