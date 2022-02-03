{
  description = ''making Nim development easier in the command-line'';
  inputs.src-rodcli-v0_1_4.flake = false;
  inputs.src-rodcli-v0_1_4.type = "github";
  inputs.src-rodcli-v0_1_4.owner = "jabbalaci";
  inputs.src-rodcli-v0_1_4.repo = "NimCliHelper";
  inputs.src-rodcli-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, src-rodcli-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodcli-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rodcli-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}