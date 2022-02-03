{
  description = ''making Nim development easier in the command-line'';
  inputs.src-rodcli-master.flake = false;
  inputs.src-rodcli-master.type = "github";
  inputs.src-rodcli-master.owner = "jabbalaci";
  inputs.src-rodcli-master.repo = "NimCliHelper";
  inputs.src-rodcli-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-rodcli-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodcli-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rodcli-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}