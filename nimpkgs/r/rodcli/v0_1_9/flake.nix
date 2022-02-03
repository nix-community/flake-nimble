{
  description = ''making Nim development easier in the command-line'';
  inputs.src-rodcli-v0_1_9.flake = false;
  inputs.src-rodcli-v0_1_9.type = "github";
  inputs.src-rodcli-v0_1_9.owner = "jabbalaci";
  inputs.src-rodcli-v0_1_9.repo = "NimCliHelper";
  inputs.src-rodcli-v0_1_9.ref = "refs/tags/v0.1.9";
  
  outputs = { self, nixpkgs, src-rodcli-v0_1_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodcli-v0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rodcli-v0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}