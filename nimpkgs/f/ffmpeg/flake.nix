{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(4.3.2).'';
  inputs."ffmpeg-master".url = "path:./master";
  inputs."ffmpeg-0_3_11".url = "path:./0_3_11";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}