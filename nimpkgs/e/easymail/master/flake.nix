{
  description = ''wrapper for the sendmail command'';
  inputs.src-easymail-master.flake = false;
  inputs.src-easymail-master.type = "github";
  inputs.src-easymail-master.owner = "coocheenin";
  inputs.src-easymail-master.repo = "easymail";
  inputs.src-easymail-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-easymail-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easymail-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-easymail-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}