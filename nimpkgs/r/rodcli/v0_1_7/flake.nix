{
  description = ''making Nim development easier in the command-line'';
  inputs.src-rodcli-v0_1_7.flake = false;
  inputs.src-rodcli-v0_1_7.type = "github";
  inputs.src-rodcli-v0_1_7.owner = "jabbalaci";
  inputs.src-rodcli-v0_1_7.repo = "NimCliHelper";
  inputs.src-rodcli-v0_1_7.ref = "refs/tags/v0.1.7";
  
  outputs = { self, nixpkgs, src-rodcli-v0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodcli-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rodcli-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}