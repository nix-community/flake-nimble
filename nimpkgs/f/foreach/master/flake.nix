{
  description = ''A sugary for loop with syntax for typechecking loop variables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-foreach-master.flake = false;
  inputs.src-foreach-master.type = "github";
  inputs.src-foreach-master.owner = "disruptek";
  inputs.src-foreach-master.repo = "foreach";
  inputs.src-foreach-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-foreach-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-foreach-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-foreach-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}