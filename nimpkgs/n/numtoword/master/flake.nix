{
  description = ''Convert numbers to words'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-numtoword-master.flake = false;
  inputs.src-numtoword-master.type = "github";
  inputs.src-numtoword-master.owner = "thisago";
  inputs.src-numtoword-master.repo = "numToWord";
  inputs.src-numtoword-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-numtoword-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-numtoword-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-numtoword-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}