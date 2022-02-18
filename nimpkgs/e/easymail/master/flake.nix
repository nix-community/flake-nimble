{
  description = ''wrapper for the sendmail command'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-easymail-master.flake = false;
  inputs.src-easymail-master.type = "github";
  inputs.src-easymail-master.owner = "coocheenin";
  inputs.src-easymail-master.repo = "easymail";
  inputs.src-easymail-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-easymail-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easymail-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-easymail-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}