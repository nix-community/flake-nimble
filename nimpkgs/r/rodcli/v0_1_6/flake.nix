{
  description = ''making Nim development easier in the command-line'';
  inputs.src-rodcli-v0_1_6.flake = false;
  inputs.src-rodcli-v0_1_6.type = "github";
  inputs.src-rodcli-v0_1_6.owner = "jabbalaci";
  inputs.src-rodcli-v0_1_6.repo = "NimCliHelper";
  inputs.src-rodcli-v0_1_6.ref = "refs/tags/v0.1.6";
  
  outputs = { self, nixpkgs, src-rodcli-v0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodcli-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rodcli-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}