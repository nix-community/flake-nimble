{
  description = ''Yet another iterator library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mangle-master.flake = false;
  inputs.src-mangle-master.type = "github";
  inputs.src-mangle-master.owner = "baabelfish";
  inputs.src-mangle-master.repo = "mangle";
  inputs.src-mangle-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mangle-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mangle-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mangle-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}