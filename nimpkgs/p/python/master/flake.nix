{
  description = ''Wrapper to interface with Python interpreter'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-python-master.flake = false;
  inputs.src-python-master.type = "github";
  inputs.src-python-master.owner = "nim-lang";
  inputs.src-python-master.repo = "python";
  inputs.src-python-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-python-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-python-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-python-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}