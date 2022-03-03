{
  description = ''wrapper for the sendmail command'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-easymail-master.flake = false;
  inputs.src-easymail-master.type = "github";
  inputs.src-easymail-master.owner = "coocheenin";
  inputs.src-easymail-master.repo = "easymail";
  inputs.src-easymail-master.ref = "refs/heads/master";
  inputs.src-easymail-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-easymail-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easymail-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-easymail-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}