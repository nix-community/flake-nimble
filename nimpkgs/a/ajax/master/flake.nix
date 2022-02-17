{
  description = ''AJAX wrapper for nim js backend.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ajax-master.flake = false;
  inputs.src-ajax-master.type = "github";
  inputs.src-ajax-master.owner = "stisa";
  inputs.src-ajax-master.repo = "ajax";
  inputs.src-ajax-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ajax-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ajax-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ajax-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}