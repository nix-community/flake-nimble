{
  description = ''Block copy of any text in HTML'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-htmlanticopy-master.flake = false;
  inputs.src-htmlanticopy-master.type = "github";
  inputs.src-htmlanticopy-master.owner = "thisago";
  inputs.src-htmlanticopy-master.repo = "htmlAntiCopy";
  inputs.src-htmlanticopy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-htmlanticopy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htmlanticopy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-htmlanticopy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}