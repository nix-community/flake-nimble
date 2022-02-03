{
  description = ''Simple web to share books, Calibre, Jester, Spectre CSS, No JavaScript, WebP & ZIP to reduce bandwidth'';
  inputs."biblioteca_guarrilla-master".url = "path:./master";
  inputs."biblioteca_guarrilla-0_1_5".url = "path:./0_1_5";
  inputs."biblioteca_guarrilla-0_1_8".url = "path:./0_1_8";
  inputs."biblioteca_guarrilla-0_1_9".url = "path:./0_1_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}