{
  description = ''AJAX wrapper for nim js backend.'';
  inputs.src-ajax-master.flake = false;
  inputs.src-ajax-master.type = "github";
  inputs.src-ajax-master.owner = "stisa";
  inputs.src-ajax-master.repo = "ajax";
  inputs.src-ajax-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ajax-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ajax-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ajax-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}